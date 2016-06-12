package net.devstudy.resume.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.stereotype.Service;

import net.devstudy.resume.entity.Hobby;
import net.devstudy.resume.service.StaticDataService;
@Service
public class StaticDataServiceImpl implements StaticDataService {

	private final Set<Hobby> allHobbies;

	private final Set<String> allHobbyNames;
	
	public StaticDataServiceImpl() {
		super();
		this.allHobbies    = Collections.unmodifiableSet(createAllHobbiesSet());
		this.allHobbyNames = Collections.unmodifiableSet(createAllHobbiNamesSet());
	}

	protected Set<Hobby> createAllHobbiesSet() {
		return new TreeSet<>(Arrays.asList(new Hobby[] { new HobbyReadOnlyEntity("Cycling"), new HobbyReadOnlyEntity("Handball"), new HobbyReadOnlyEntity("Football"), new HobbyReadOnlyEntity("Basketball"),
				new HobbyReadOnlyEntity("Bowling"), new HobbyReadOnlyEntity("Boxing"), new HobbyReadOnlyEntity("Volleyball"), new HobbyReadOnlyEntity("Baseball"), new HobbyReadOnlyEntity("Skating"),
				new HobbyReadOnlyEntity("Skiing"), new HobbyReadOnlyEntity("Table tennis"), new HobbyReadOnlyEntity("Tennis"), new HobbyReadOnlyEntity("Weightlifting"),
				new HobbyReadOnlyEntity("Automobiles"), new HobbyReadOnlyEntity("Book reading"), new HobbyReadOnlyEntity("Cricket"), new HobbyReadOnlyEntity("Photo"),
				new HobbyReadOnlyEntity("Shopping"), new HobbyReadOnlyEntity("Cooking"), new HobbyReadOnlyEntity("Codding"), new HobbyReadOnlyEntity("Animals"), new HobbyReadOnlyEntity("Traveling"),
				new HobbyReadOnlyEntity("Movie"), new HobbyReadOnlyEntity("Painting"), new HobbyReadOnlyEntity("Darts"), new HobbyReadOnlyEntity("Fishing"), new HobbyReadOnlyEntity("Kayak slalom"),
				new HobbyReadOnlyEntity("Games of chance"), new HobbyReadOnlyEntity("Ice hockey"), new HobbyReadOnlyEntity("Roller skating"), new HobbyReadOnlyEntity("Swimming"),
				new HobbyReadOnlyEntity("Diving"), new HobbyReadOnlyEntity("Golf"), new HobbyReadOnlyEntity("Shooting"), new HobbyReadOnlyEntity("Rowing"), new HobbyReadOnlyEntity("Camping"),
				new HobbyReadOnlyEntity("Archery"), new HobbyReadOnlyEntity("Pubs"), new HobbyReadOnlyEntity("Music"), new HobbyReadOnlyEntity("Computer games"), new HobbyReadOnlyEntity("Authorship"),
				new HobbyReadOnlyEntity("Singing"), new HobbyReadOnlyEntity("Foreign lang"), new HobbyReadOnlyEntity("Billiards"), new HobbyReadOnlyEntity("Skateboarding"),
				new HobbyReadOnlyEntity("Collecting"), new HobbyReadOnlyEntity("Badminton"), new HobbyReadOnlyEntity("Disco") }));
	}

	protected Set<String> createAllHobbiNamesSet() {
		Set<String> set = new HashSet<>();
		for (Hobby h : allHobbies) {
			set.add(h.getName());
		}
		return set;
	}

	@Override
	public Set<Hobby> listAllHobbies() {
		return allHobbies;
	}

	@Override
	public List<Hobby> createHobbyEntitiesByNames(List<String> names) {
		List<Hobby> result = new ArrayList<>(names.size());
		for (String name : names) {
			if (allHobbyNames.contains(name)) {
				result.add(new Hobby(name));
			}
		}
		return result;
	}
	
	protected static final class HobbyReadOnlyEntity extends Hobby {
		private static final long serialVersionUID = 1480761757121979601L;

		protected HobbyReadOnlyEntity(String name) {
			super(name);
		}

		@Override
		public void setName(String name) {
			throw new UnsupportedOperationException("This hobby instance is readonly instance!");
		}

		@Override
		public void setSelected(boolean selected) {
			throw new UnsupportedOperationException("This hobby instance is readonly instance!");
		}
	}

}
